##users
- has_many :projects
- has_many :rewards, through: :pledges
- has_many :pledges
- has_many :comments, through :projects

- name:string
- username:string
- password_digest
- bio:text
- avatar:text


##pledges
- belongs_to :user
- belongs_to :reward

- user:references
- reward:references

- amount:integer

##Projects
- has_many :tags
- has_many :rewards
- belongs_to :category
- has_many :pledges, through: :rewards
- belongs_to :user
- has_many :comments

- name:string
- creator:string
- description:text
- image:text
- deadline:date
- goal:float

- user:references
- category:references


##Rewards
<!-- - belongs_to :project
- has_many :pledges

- title
- value:float
- description:text
- estimated_delivery:date
- quantity:integer

- project:refrences 

##Categories
- has_many :projects

- name:string
- description:text
-->
##Tags
- name:string
- project:references

##Comments
- belongs_to :user
- belongs_to :projects
- user:references
- project: references

- body:text

----------------------------------------------------
##Gems

- ActsasTaggable
- CanCanCan
- ActsasCommentable
- progressbar
- carrierwave
-Rmagick


------------------------

##CSS Framework
- Foundations
