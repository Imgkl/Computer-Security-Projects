.class Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$10;
.super Ljava/lang/Object;
.source "LowLevelOptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;->createThrowException(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$EXCEPTION;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;


# direct methods
.method constructor <init>(Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity$10;->this$0:Lcom/eventgenie/android/activities/developer/LowLevelOptionsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "This was manually caused in LowLevelOptions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
