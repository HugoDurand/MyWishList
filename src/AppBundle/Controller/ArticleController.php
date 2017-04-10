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
        $article = $em->getRepository('AppBundle:Article')->findByIdListe($liste);


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
        ));
    }

}
