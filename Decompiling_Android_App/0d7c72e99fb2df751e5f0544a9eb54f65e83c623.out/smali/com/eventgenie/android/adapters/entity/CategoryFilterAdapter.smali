.class public Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CategoryFilterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p3, "objects":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 53
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 55
    .local v1, "row":Landroid/view/View;
    const v3, 0x1020014

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 56
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/entity/CategoryFilterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "item":Ljava/lang/String;
    const-string v3, "_other"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    sget v3, Lcom/eventgenie/android/R$string;->other:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 62
    :cond_0
    return-object v1
.end method
