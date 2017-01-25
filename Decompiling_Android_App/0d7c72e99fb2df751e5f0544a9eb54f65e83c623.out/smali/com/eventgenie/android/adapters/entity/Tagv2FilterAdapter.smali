.class public Lcom/eventgenie/android/adapters/entity/Tagv2FilterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Tagv2FilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final OTHER_PREFIX:Ljava/lang/String; = "_other"


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/util/List;)V
    .locals 0
    .param p1, "c"    # Landroid/app/Activity;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 31
    .local v1, "row":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 32
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/Tagv2FilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;

    .line 34
    .local v0, "item":Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;
    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_other"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    sget v3, Lcom/eventgenie/android/R$string;->other:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 40
    :goto_0
    return-object v1

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/eventgenie/android/adapters/entity/SearchCategoryEntity;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
