from django.contrib import admin
from .models import Post, PostCard, Category, Tag, Page


admin.site.register(Category)
admin.site.register(Tag)

class PageAdmin(admin.ModelAdmin):
    def get_list_display(self, request):
        return [field.name for field in Page._meta.fields]

admin.site.register(Page, PageAdmin)

class PostAdmin(admin.ModelAdmin):
    list_display = ['title', 
                    'title_tag',
                    'header_image',
                    'author',
                    'is_postcard_enabled',
                    'get_postcards',
                    'get_categories',
                    'get_tags',
                    'call2action',
                    'sort_order',
                    'is_visible',
                    'post_date',
                    ]

    # Define methods to display tags, categories, and postcards in the list display
    def get_tags(self, obj):
        return ", ".join([tag.name for tag in obj.tags.all()])

    get_tags.short_description = 'Tags'

    def get_categories(self, obj):
        return ", ".join([category.name for category in obj.category2.all()])

    get_categories.short_description = 'Categories'

    def get_postcards(self, obj):
        return ", ".join([postcard.title for postcard in obj.postcard.all()])

    get_postcards.short_description = 'Postcards'

admin.site.register(Post, PostAdmin)

class PostCardAdmin(admin.ModelAdmin):
    list_display = ['title',
                    'header_image',
                    'get_categories',
                    'get_tags',
                    'expiration_date',
                    'available_quantity',
                    'sort_order',
                    'created_at',
                    'updated_at',
                    ]

    # Define methods to display tags and categories in the list display
    def get_tags(self, obj):
        return ", ".join([tag.name for tag in obj.tags.all()])

    get_tags.short_description = 'Tags'

    def get_categories(self, obj):
        return ", ".join([category.name for category in obj.category.all()])

    get_categories.short_description = 'Categories'

admin.site.register(PostCard, PostCardAdmin)