{% snapshot UnawnseredQuestions_snapshot %}

{{
    config(
      target_database='sales-loft-exercise',
      target_schema='snapshot',
      strategy='check',
      unique_key='id',
      check_cols='all',
      invalidate_hard_deletes = True,
    )
}}

select * from {{ ref('UnawnseredQuestions') }}

{% endsnapshot %}