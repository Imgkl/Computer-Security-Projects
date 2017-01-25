.class Lcom/eventgenie/android/utils/help/MultiEventHelper$1;
.super Ljava/lang/Object;
.source "MultiEventHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/utils/help/MultiEventHelper;->loadEvent(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/utils/help/MultiEventHelper;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/eventgenie/android/utils/help/MultiEventHelper$1;->this$0:Lcom/eventgenie/android/utils/help/MultiEventHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 122
    return-void
.end method
