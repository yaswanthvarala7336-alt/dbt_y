{% snapshot snapshot_tickets_check %}

    {{
        config(
            target_schema='my_snapshots',
            strategy='check',
            unique_key='ticket_id',
            check_cols=['ticket_status'],
            invalidate_hard_delete=True
        )
    }}

    select * from {{ ref('tickets')}}

{% endsnapshot %}