<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class ProgressController extends AbstractController{

    /* Attributs */

    /* Méthodes */


/**
     * @Route("/progress", name="progress.index")
     * @return Response
     */
    public function index(): Response{
        return $this->render('progress/index.html.twig');
    }
}