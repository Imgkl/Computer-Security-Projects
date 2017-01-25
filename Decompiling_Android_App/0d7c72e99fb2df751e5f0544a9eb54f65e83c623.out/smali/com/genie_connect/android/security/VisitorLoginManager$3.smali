.class Lcom/genie_connect/android/security/VisitorLoginManager$3;
.super Ljava/lang/Object;
.source "VisitorLoginManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/genie_connect/android/security/VisitorLoginManager;->doCheckFavouriteSecurity(Landroid/app/Activity;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/genie_connect/android/security/VisitorLoginManager;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/genie_connect/android/security/VisitorLoginManager;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/genie_connect/android/security/VisitorLoginManager$3;->this$0:Lcom/genie_connect/android/security/VisitorLoginManager;

    iput-object p2, p0, Lcom/genie_connect/android/security/VisitorLoginManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 108
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/genie_connect/android/security/VisitorLoginManager$3;->val$activity:Landroid/app/Activity;

    const-class v2, Lcom/eventgenie/android/activities/others/LoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/genie_connect/android/security/VisitorLoginManager$3;->val$activity:Landroid/app/Activity;

    const/16 v2, 0x138a

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 110
    return-void
.end method
