.class Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$1;
.super Ljava/lang/Object;
.source "CardArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 132
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 133
    .local v0, "favIV":Landroid/widget/ImageView;
    sget v4, Lcom/eventgenie/android/R$id;->favId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 134
    .local v1, "wasFav":Z
    sget v4, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 135
    .local v2, "id":J
    iget-object v4, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
    invoke-static {v4}, Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;->access$000(Lcom/eventgenie/android/adapters/newsandsocial/CardArrayAdapter;)Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    move-result-object v4

    invoke-interface {v4, v1, v2, v3}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;->onClickFavourite(ZJ)V

    .line 136
    return-void
.end method
