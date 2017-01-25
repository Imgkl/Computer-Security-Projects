.class Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$1;
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
    .line 175
    iput-object p1, p0, Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter$1;->this$0:Lcom/eventgenie/android/adapters/newsandsocial/CardCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    .local v0, "favIV":Landroid/widget/ImageView;
    sget v4, Lcom/eventgenie/android/R$id;->favId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 181
    .local v1, "wasFav":Z
    sget v5, Lcom/eventgenie/android/R$id;->favId:I

    if-nez v1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v5, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 182
    sget v4, Lcom/eventgenie/android/R$id;->cursorId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 185
    .local v2, "id":J
    return-void

    .line 181
    .end local v2    # "id":J
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method
