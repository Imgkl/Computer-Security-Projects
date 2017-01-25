.class Lcom/eventgenie/android/activities/base/GenieAbcActivity$2;
.super Ljava/lang/Object;
.source "GenieAbcActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/base/GenieAbcActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/base/GenieAbcActivity;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity$2;->this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 712
    iget-object v0, p0, Lcom/eventgenie/android/activities/base/GenieAbcActivity$2;->this$0:Lcom/eventgenie/android/activities/base/GenieAbcActivity;

    invoke-virtual {v0}, Lcom/eventgenie/android/activities/base/GenieAbcActivity;->doActionAfterRejectingPermissions()V

    .line 713
    return-void
.end method
