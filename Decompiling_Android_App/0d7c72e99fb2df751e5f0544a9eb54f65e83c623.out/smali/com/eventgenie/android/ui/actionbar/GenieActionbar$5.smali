.class Lcom/eventgenie/android/ui/actionbar/GenieActionbar$5;
.super Ljava/lang/Object;
.source "GenieActionbar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/ui/actionbar/GenieActionbar;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/ui/actionbar/GenieActionbar;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/eventgenie/android/ui/actionbar/GenieActionbar$5;->this$0:Lcom/eventgenie/android/ui/actionbar/GenieActionbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 298
    return-void
.end method
