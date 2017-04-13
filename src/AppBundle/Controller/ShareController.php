<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Liste;
use AppBundle\Entity\Share;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class ShareController extends Controller
{

    /**
     * @Route("/shared", name="shared")
     */

    public function IndexAction(Request $request)
    {

        $em = $this->getDoctrine()->getManager();

        if( $this->container->get( 'security.authorization_checker' )->isGranted( 'IS_AUTHENTICATED_FULLY' ) )
        {
            $user = $this->container->get('security.token_storage')->getToken()->getUser();
            $userid = $user->getId();;
        };

        $listerecepteur = $em->getRepository('AppBundle:Share')->findByIdRecepteur($userid);

        $listeshare = 0;

        foreach ($listerecepteur as $lissha){
            $shared = $lissha->getIdListe();
            $listeshare = $em->getRepository('AppBundle:Liste')->findById($shared);
        };

        return $this->render('AppBundle:Share:shareindex.html.twig', array(
            'listeshare' => $listeshare,
        ));
    }


    /**
     * @Route("/share/{liste}", name="share", requirements={"liste": "\d+"})
     */

    public function ShareAction(Request $request, Liste $liste)
    {

        $em = $this->getDoctrine()->getManager();

        if( $this->container->get( 'security.authorization_checker' )->isGranted( 'IS_AUTHENTICATED_FULLY' ) )
        {
            $user = $this->container->get('security.token_storage')->getToken()->getUser();
            $userid = $user->getId();;
        };

        $email = $request->request->get('email');

        if(!empty($email)){

            $idrecepteur = $em->getRepository('AppBundle:User')->findByEmail($email);
            foreach ($idrecepteur as $idr){
                $recepteurid = $idr->getId();
            };
        };



        if( !empty($request->request->all())){

            $share = new Share();
            $share->setIdRecepteur($recepteurid);
            $share->setIdListe($liste->getId());
            $share->setIdExpediteur($userid);

            $em->persist($share);
            $em->flush();

            return $this->redirectToRoute('homepage');

        };

        return $this->render('AppBundle:Share:share.html.twig', array(

        ));
    }


}
