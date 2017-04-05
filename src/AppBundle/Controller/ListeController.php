<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Liste;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;

/**
 * Liste controller.
 *
 * @Route("liste")
 */
class ListeController extends Controller
{
    /**
     * Lists all liste entities.
     *
     * @Route("/", name="liste_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        $listes = $em->getRepository('AppBundle:Liste')->findAll();

        return $this->render('liste/index.html.twig', array(
            'listes' => $listes,
        ));
    }

    /**
     * Creates a new liste entity.
     *
     * @Route("/new", name="liste_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $liste = new Liste();
        $form = $this->createForm('AppBundle\Form\ListeType', $liste);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($liste);
            $em->flush();

            return $this->redirectToRoute('liste_show', array('id' => $liste->getId()));
        }

        return $this->render('liste/new.html.twig', array(
            'liste' => $liste,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a liste entity.
     *
     * @Route("/{id}", name="liste_show")
     * @Method("GET")
     */
    public function showAction(Liste $liste)
    {
        $deleteForm = $this->createDeleteForm($liste);

        return $this->render('liste/show.html.twig', array(
            'liste' => $liste,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing liste entity.
     *
     * @Route("/{id}/edit", name="liste_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Liste $liste)
    {
        $deleteForm = $this->createDeleteForm($liste);
        $editForm = $this->createForm('AppBundle\Form\ListeType', $liste);
        $editForm->handleRequest($request);

        if ($editForm->isSubmitted() && $editForm->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('liste_edit', array('id' => $liste->getId()));
        }

        return $this->render('liste/edit.html.twig', array(
            'liste' => $liste,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a liste entity.
     *
     * @Route("/{id}", name="liste_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Liste $liste)
    {
        $form = $this->createDeleteForm($liste);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($liste);
            $em->flush();
        }

        return $this->redirectToRoute('liste_index');
    }

    /**
     * Creates a form to delete a liste entity.
     *
     * @param Liste $liste The liste entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Liste $liste)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('liste_delete', array('id' => $liste->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
}
