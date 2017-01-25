.class Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$2;
.super Ljava/lang/Object;
.source "CardCursorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$2;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$2;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    # getter for: Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->mCallback:Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;
    invoke-static {v0}, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;->access$000(Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;)Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;

    move-result-object v1

    sget v0, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/eventgenie/android/activities/activitystream/ActivityStreamAdapterCallback;->onShare(J)V

    .line 192
    return-void
.end method
