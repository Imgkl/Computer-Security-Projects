.class public Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TwitterAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
        ">;"
    }
.end annotation


# static fields
.field public static final ROW_LAYOUT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/eventgenie/android/R$layout;->list_item_twitter_v1_1:I

    sput v0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->ROW_LAYOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;J)V
    .locals 1
    .param p1, "c"    # Landroid/app/Activity;
    .param p3, "namespace"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/social/twitter/Tweet;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p2, "objects":Ljava/util/List;, "Ljava/util/List<Lcom/eventgenie/android/utils/social/twitter/Tweet;>;"
    sget v0, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->ROW_LAYOUT:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 62
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 67
    move-object v1, p2

    .line 69
    .local v1, "row":Landroid/view/View;
    if-nez v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->ROW_LAYOUT:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 74
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v2, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;

    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-direct {v2, p0, v1, v3}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;-><init>(Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;Landroid/view/View;Lcom/eventgenie/android/utils/social/twitter/Tweet;)V

    .line 75
    .local v2, "wrapper":Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;
    invoke-virtual {p0, p1}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/eventgenie/android/utils/social/twitter/Tweet;

    invoke-virtual {v2, v3}, Lcom/eventgenie/android/adapters/newsandsocial/TwitterAdapter$TimelineEntryWrapper;->populateFrom(Lcom/eventgenie/android/utils/social/twitter/Tweet;)V

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 78
    return-object v1
.end method
