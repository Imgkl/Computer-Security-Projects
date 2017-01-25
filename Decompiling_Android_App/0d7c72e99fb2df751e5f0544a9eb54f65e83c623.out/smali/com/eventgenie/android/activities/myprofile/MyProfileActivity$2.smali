.class Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$2;
.super Ljava/lang/Object;
.source "MyProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->onCustomButton1Click(Landroid/view/View;)V
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
    .line 536
    iput-object p1, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$2;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 539
    iget-object v0, p0, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity$2;->this$0:Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;

    # invokes: Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->doUpdate()V
    invoke-static {v0}, Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;->access$100(Lcom/eventgenie/android/activities/myprofile/MyProfileActivity;)V

    .line 540
    return-void
.end method
