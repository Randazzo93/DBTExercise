{% snapshot UnawnseredQuestions_snapshot %}

{{
    config(
      target_database='UnawnseredQuestions',
      target_schema='UnawnseredQuestions',
      strategy='check',
      unique_key='id',
      check_cols='all',
      invalidate_hard_deletes = True,
    )
}}

select * from {{ ref('UnawnseredQuestions') }}

{% endsnapshot %}