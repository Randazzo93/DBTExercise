{% snapshot UnawnseredQuestions_snapshot %}

{{
    config(
      target_database='snapshot-db',
      target_schema='UnawnseredQuestions',
      unique_key='id',

      strategy='check',
      check_cols='all',
      invalidate_hard_deletes = True
    )
}}

select * from {{ ref('UnawnseredQuestions') }}

{% endsnapshot %}