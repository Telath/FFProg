<?php

namespace App\Entity;

use App\Repository\ExtensionsRepository;
use Doctrine\ORM\Mapping as ORM;
use Cocur\Slugify\Slugify;

/**
 * @ORM\Entity(repositoryClass=ExtensionsRepository::class)
 */
class Extensions
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $name;

    /**
     * @ORM\Column(type="integer")
     */
    private $levelMin;

    /**
     * @ORM\Column(type="integer")
     */
    private $levelMax;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }
    
    public function setName(string $name): self
    {
        $this->name = $name;
        
        return $this;
    }
    
    public function getSlug():string {
        return (new Slugify())->slugify($this->name);
    }

    public function getLevelMin(): ?int
    {
        return $this->levelMin;
    }

    public function setLevelMin(int $levelMin): self
    {
        $this->levelMin = $levelMin;

        return $this;
    }

    public function getLevelMax(): ?int
    {
        return $this->levelMax;
    }

    public function setLevelMax(int $levelMax): self
    {
        $this->levelMax = $levelMax;

        return $this;
    }
}
