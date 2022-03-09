<?php

namespace App\Controller;

use App\Entity\Extensions;
use App\Repository\ExtensionsRepository;
use App\Repository\QuestsRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ListeController extends AbstractController{

    /* Attributs */

    // /**
    //  * @var ExtensionsRepository
    //  */
    // private $repository;

    // /* Méthodes */


    // public function __construct(ExtensionsRepository $repository)
    // {
    //     $this->repository = $repository;
    // }


    /**
     * @Route("/list", name="liste.index")
     * @return Response
     */
    public function index(ExtensionsRepository $repository): Response{

        $this->repository = $repository;
        $extensions = $this->repository->findAll();
        return $this->render('liste/index.html.twig',[
            'extension' => $extensions    
        ]);
    }

    /**
     * @Route("/list/{id}", name="liste.show")
     * @return Response
     */
    public function show(QuestsRepository $repository, ExtensionsRepository $repositoryExt, $id): Response{
        $this->repository = $repository;
        $this->repositoryExt = $repositoryExt;

        $extensions = $this->repositoryExt->find($id);
        
        $quests = $this->repository->findBy(['extension' => $extensions->getName()], NULL, 1);
        return $this->render('liste/show.html.twig',[
            'extensions' => $extensions,
            'quest' => $quests
        ]);
    }

}