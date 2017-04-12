<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class ShareController extends Controller
{

    /**
     * @Route("/share", name="share")
     */

    public function IndexAction(Request $request)
    {

        return $this->render('AppBundle:Share:share.html.twig', array(

        ));
    }
}
