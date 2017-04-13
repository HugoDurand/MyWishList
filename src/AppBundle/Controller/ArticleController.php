<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Article;
use AppBundle\Entity\Liste;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class ArticleController extends Controller
{
    /**
     * @Route("/article/{liste}", name="article", requirements={"liste": "\d+"})
     */
    public function IndexAction(Request $request, Liste $liste)
    {

        $em = $this->getDoctrine()->getManager();
        $article = $em->getRepository('AppBundle:Article')->findByIdListe($liste, array('date' => 'asc'));

        $sum = 0;
        foreach ($article as $prix){
            $price = $prix->getPrix();
            $sum+= $price;
        };

        $nom = $request->request->get('nom');
        $photo = $request->request->get('photo');
        $url = $request->request->get('url');
        $prix = $request->request->get('prix');
        $note = $request->request->get('note');

        if( !empty($request->request->all())){

            $article = new Article();
            $article->setNom($nom);
            $article->setPhoto($photo);
            $article->setUrl($url);
            $article->setPrix($prix);
            $article->setNote($note);
            $article->setDate(new \DateTime());
            $article->setIdListe($liste->getId());

            $em->persist($article);
            $em->flush();

            return $this->redirectToRoute('article', array('liste'=> $liste->getId()));

        };

        return $this->render('AppBundle:Article:article.html.twig', array(
            'article' => $article,
            'sum' => $sum,
        ));
    }


    /**
     * Deletes a article entity.
     *
     * @Route("delete/{article}", name="deletearticle")
     */
    public function deleteAction(Request $request, Article $article)
    {

        $userid = 0;
        if( $this->container->get( 'security.authorization_checker' )->isGranted( 'IS_AUTHENTICATED_FULLY' ) )
        {
            $user = $this->container->get('security.token_storage')->getToken()->getUser();
            $userid = $user->getId();;
        };

        $em = $this->getDoctrine()->getManager();
        $liste = $em->getRepository('AppBundle:Liste')->findByIdUser($userid, array('date' => 'desc'));

        foreach ($liste as $list){
            $l = $list->getId();
        }

        $em = $this->getDoctrine()->getManager();
        $em->remove($article);
        $em->flush();



        return $this->redirectToRoute('article', array('liste'=> $l));
    }




    /**
     * Edit a liste entity.
     *
     * @Route("/edit/{article}", name="editarticle")
     */
    public function editAction(Request $request, Article $article)
    {

        $em = $this->getDoctrine()->getManager();

        $userid = 0;
        if( $this->container->get( 'security.authorization_checker' )->isGranted( 'IS_AUTHENTICATED_FULLY' ) )
        {
            $user = $this->container->get('security.token_storage')->getToken()->getUser();
            $userid = $user->getId();;
        };

        $liste = $em->getRepository('AppBundle:Liste')->findByIdUser($userid, array('date' => 'desc'));

        foreach ($liste as $list){
            $l = $list->getId();
        }

        $nom = $request->request->get('nom');
        $photo = $request->request->get('photo');
        $url = $request->request->get('url');
        $prix = $request->request->get('prix');
        $note = $request->request->get('note');



        if( !empty($request->request->all())){

            $article->setNom($nom);
            $article->setPhoto($photo);
            $article->setUrl($url);
            $article->setPrix($prix);
            $article->setNote($note);
            $article->setDate(new \DateTime());
            $article->setIdListe($l);

            $em->persist($article);
            $em->flush();

            return $this->redirectToRoute('article', array('liste'=> $l));

        };

        return $this->render('AppBundle:Article:editarticle.html.twig', array(

        ));
    }


}
