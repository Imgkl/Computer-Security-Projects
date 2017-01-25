.class final Lcom/eventgenie/android/EventGenieApplication$2;
.super Ljava/lang/Object;
.source "EventGenieApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/eventgenie/android/EventGenieApplication;->setLaxStrictMode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 475
    # invokes: Lcom/eventgenie/android/EventGenieApplication;->setThreadPolicy()V
    invoke-static {}, Lcom/eventgenie/android/EventGenieApplication;->access$200()V

    .line 476
    return-void
.end method
