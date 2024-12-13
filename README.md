# Exercice :

## Prérequis

Avant de commencer, prenez tout d'abord soin de lancer la commande à la racine du projet :

```Bash
terraform init
```

## Structure du projet

```txt
tree
.
├── .gitignore
├── api.tf
├── LICENSE
├── NOTICE.md
├── README.md
├── img
│   ├── ...
├── proxy
│   ├── Dockerfile
│   └── nginx.conf
└── web
    ├── Dockerfile
    ├── package-lock.json
    ├── package.json
    └── server.js

3 directories, 5 files

```

## Objectif

L'objectif final est que votre application, déjà fonctionnelle, s'exécute et puisse être contactée sur le point d'entrée : `http://localhost`.

Votre infrastructure finale ressemblera à ça :

![Représentation en schéma de l'infrastructure finale](./img/Infra-terraform.drawio.png)

## Exercice 1 - Montage de l'infrastructure

En vous servant de la cartographie d'infrastructure renseignée plus haut, remettez en place les applications pour que le service soit contactable sur `http://localhost`.
Pour cet exercice, vous êtes forcés de travailler avec la version 3.0.2 du provider. Aucune autre.

**Liens utiles :**

- https://registry.terraform.io/providers/kreuzwerker/docker/latest/docs

## Exercice 2 - Professionnalisation de l'environnement

Votre infrastructure est désormais fonctionnelle. Mais tout est actuellement dans un dossier sans qu'on puisse vraiment s'y retrouver.

Deux objectifs sont à atteindre désormais :

- Le premier est une mise en place de généricité, afin de s'approcher de l'industrialisation de configuration. [Voici un petit article qui pourrait s'avérer fort utile](https://developer.hashicorp.com/terraform/language/modules).
- Synchroniser votre infrastructure avec HCP cloud, afin de pouvoir permettre une collaboration plus agréable sur une interface consultable pour les managers. Les runs doivent toujours être exécutées via la commande `terraform apply`. [Voici un petit article qui pourrait s'avérer fort utile](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started).

## Conclusion

Voilà une introduction un peu plus complexe à des cas de figures auxquels vous pourrez être confrontés si terraform fait partie intégrante de vos métier. Cela ne couvre pas tous les cas de figures, et des bonnes pratiques docker pourraient être implémentés.
Mais vous avez ici déjà des bases solides pour commencer terraform en professionnel.
