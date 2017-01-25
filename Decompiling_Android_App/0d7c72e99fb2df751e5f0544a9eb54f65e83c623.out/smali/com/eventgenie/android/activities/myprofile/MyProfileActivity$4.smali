.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$4;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->onMugshotClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$4;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "choice"    # I

    .prologue
    .line 560
    if-nez p2, :cond_1

    .line 561
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$4;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    const/16 v1, 0x21

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->dispatchTakePictureIntent(I)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$200(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;I)V

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$4;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    const/16 v1, 0x63

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->dispatchSelectPictureIntent(I)V
    invoke-static {v0, v1}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$300(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;I)V

    goto :goto_0
.end method
