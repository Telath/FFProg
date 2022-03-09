<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Twig\Environment;

class HomeController extends AbstractController{

    /* Attributs */



    /* Méthodes */

    public function __construct(Environment $twig){
        $this->twig = $twig;
    }


    /**
     * @Route("/", name="home.index")
     * @return Response
     */
    public function index(): Response{
        return $this->render('pages/home.html.twig');
    }
}