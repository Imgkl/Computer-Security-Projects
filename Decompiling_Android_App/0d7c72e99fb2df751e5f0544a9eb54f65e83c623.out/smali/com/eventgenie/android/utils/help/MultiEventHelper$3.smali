.class Lcom/eventgenie/android/utils/help/MultiEventHelper$3;
.super Ljava/lang/Object;
.source "MultiEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/MultiEventHelper;->tryToChangeEvent(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

.field final synthetic val$appsCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$3;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    iput-object p2, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$3;->val$appsCursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$3;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$3;->val$appsCursor:Landroid/database/Cursor;

    # invokes: Lcom/eventgenie/android/utils/help/MultiEventHelper;->loadEvent(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/utils/help/MultiEventHelper;->access$200(Lcom/eventgenie/android/utils/help/MultiEventHelper;Landroid/database/Cursor;)V

    .line 165
    return-void
.end method
