.class public Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;
.super Ljava/lang/Object;
.source "TwitterManager.java"

# interfaces
.implements Ltwitter4j/auth/Authorization;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/managers/TwitterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BearerAuthorization"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6b3caf2435b8c47dL


# instance fields
.field private bearer:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "bearer"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    iput-object p1, p0, Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;->bearer:Ljava/lang/String;

    .line 315
    return-void
.end method


# virtual methods
.method public getAuthorizationHeader(Ltwitter4j/internal/http/HttpRequest;)Ljava/lang/String;
    .locals 2
    .param p1, "req"    # Ltwitter4j/internal/http/HttpRequest;

    .prologue
    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;->bearer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/eventgenie/android/utils/managers/TwitterManager$BearerAuthorization;->bearer:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
