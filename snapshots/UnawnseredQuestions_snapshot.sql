{% snapshot UnawnseredQuestions_snapshot %}

{{
    config(
      target_database='snapshots-db',
      target_schema='UnawnseredQuestions',
      unique_key='id',

      strategy='check',
      check_cols='all',
    )
}}

select * from {{ ref('UnawnseredQuestions') }}

{% endsnapshot %}