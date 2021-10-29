
/*
    Configured on 10/28/2021 by Thomas Randazzo
    Used to analyze data for Unawnsered Questions in Stack OverFlow
*/

{{ config(materialized='table') }}

with UnawnseredQuestions as (

SELECT 
    PQ.id
   ,PQ.title
   ,PQ.body
   ,PQ.creation_date
   ,PQ.tags
   ,PQ.owner_user_id
   ,PQ.view_count
   ,PQ.score
   ,U.display_name
   ,U.age
   ,U.reputation
   ,U.location
   ,RANK() OVER(ORDER BY PQ.view_count DESC)  AS popular_rank
   ,RANK() OVER(ORDER BY PQ.score DESC)       AS trending_rank


FROM {{ source('raw_stackoverflow', 'posts_questions')}} AS PQ
    LEFT JOIN {{ source('raw_stackoverflow', 'users')}}  AS U      ON U.id = PQ.owner_user_id

WHERE PQ.answer_count = 0 

LIMIT 10
)

select *
from UnawnseredQuestions

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
