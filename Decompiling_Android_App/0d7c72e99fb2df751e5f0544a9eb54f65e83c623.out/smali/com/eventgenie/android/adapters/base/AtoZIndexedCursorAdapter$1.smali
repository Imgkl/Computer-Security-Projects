.class Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter$1;
.super Ljava/lang/Object;
.source "AtoZIndexedCursorAdapter.java"

# interfaces
.implements Landroid/support/v4/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter$1;->this$0:Lcom/eventgenie/android/adapters/base/AtoZIndexedCursorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .prologue
    .line 63
    const-string v1, "fullDescription"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 64
    const-string v1, "fullDescription"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "productDescription":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "..."

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 69
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    const-string v1, "\n"

    const-string v2, "<br>"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;

    invoke-direct {v3}, Lcom/eventgenie/android/fragments/entity/handlers/ListTagHandler;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    const/4 v1, 0x1

    .line 73
    .end local v0    # "productDescription":Ljava/lang/String;
    :goto_0
    return v1

    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
