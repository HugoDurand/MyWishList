<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class WisherController extends Controller
{

    /**
     * @Route("/wisher", name="wisher")
     */
    public function indexAction(Request $request)
    {


        return $this->render('AppBundle:Wisher:wisher.html.twig', array(
          
        ));
        
    }

}
