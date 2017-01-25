.class Lcom/genie_connect/android/security/VisitorLoginManager$2;
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


# direct methods
.method constructor <init>(Lcom/genie_connect/android/security/VisitorLoginManager;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/genie_connect/android/security/VisitorLoginManager$2;->this$0:Lcom/genie_connect/android/security/VisitorLoginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 115
    return-void
.end method
