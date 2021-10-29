{% snapshot UnawnseredQuestions_snapshot %}

{{
    config(
      target_database='snapshots-table',
      target_schema='snapshots',
      unique_key='id',

      strategy='check',
      check_cols='all',
    )
}}

select * from {{ ref('UnawnseredQuestions') }}

{% endsnapshot %}