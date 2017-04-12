<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Share
 *
 * @ORM\Table(name="share")
 * @ORM\Entity(repositoryClass="AppBundle\Repository\ShareRepository")
 */
class Share
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var int
     *
     * @ORM\Column(name="id_expediteur", type="integer")
     */
    private $idExpediteur;

    /**
     * @var int
     *
     * @ORM\Column(name="id_recepteur", type="integer")
     */
    private $idRecepteur;

    /**
     * @var int
     *
     * @ORM\Column(name="id_liste", type="integer")
     */
    private $idListe;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set idExpediteur
     *
     * @param integer $idExpediteur
     *
     * @return Share
     */
    public function setIdExpediteur($idExpediteur)
    {
        $this->idExpediteur = $idExpediteur;

        return $this;
    }

    /**
     * Get idExpediteur
     *
     * @return int
     */
    public function getIdExpediteur()
    {
        return $this->idExpediteur;
    }

    /**
     * Set idRecepteur
     *
     * @param integer $idRecepteur
     *
     * @return Share
     */
    public function setIdRecepteur($idRecepteur)
    {
        $this->idRecepteur = $idRecepteur;

        return $this;
    }

    /**
     * Get idRecepteur
     *
     * @return int
     */
    public function getIdRecepteur()
    {
        return $this->idRecepteur;
    }

    /**
     * Set idListe
     *
     * @param integer $idListe
     *
     * @return Share
     */
    public function setIdListe($idListe)
    {
        $this->idListe = $idListe;

        return $this;
    }

    /**
     * Get idListe
     *
     * @return int
     */
    public function getIdListe()
    {
        return $this->idListe;
    }
}

