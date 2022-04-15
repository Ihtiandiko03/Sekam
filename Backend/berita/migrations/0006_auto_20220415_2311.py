# Generated by Django 3.2.9 on 2022-04-15 16:11

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('berita', '0005_berita_slug'),
    ]

    operations = [
        migrations.AlterField(
            model_name='berita',
            name='id',
            field=models.IntegerField(editable=False, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='berita',
            name='slug',
            field=models.SlugField(blank=True, editable=False),
        ),
    ]