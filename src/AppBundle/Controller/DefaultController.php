<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Liste;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();
        $liste = $em->getRepository('AppBundle:Liste')->findBy(array(), array('date'=>'desc'));

        $nom = $request->request->get('nom');
//        $photo = $request->request->get('photo');

        if( !empty($request->request->all())){

        $liste = new Liste();
        $liste->setNom($nom);
//        $liste->setPhoto($photo);
        $liste->setDate(new \DateTime());

        $em->persist($liste);
        $em->flush();

        };

        return $this->render('default/index.html.twig', array(
            'liste' => $liste,



        ));

    }
}
