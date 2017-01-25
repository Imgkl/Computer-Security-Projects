.class public Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;
.super Ljava/lang/Object;
.source "UpdateApplyErrorEvent.java"


# instance fields
.field private mException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;->mException:Ljava/lang/Exception;

    .line 11
    return-void
.end method


# virtual methods
.method public getException()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;->mException:Ljava/lang/Exception;

    return-object v0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/eventgenie/android/eventbus/events/dataupdate/UpdateApplyErrorEvent;->mException:Ljava/lang/Exception;

    .line 19
    return-void
.end method
