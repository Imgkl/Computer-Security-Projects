.class public Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;
.super Ljava/lang/Object;
.source "ValidateFavouritingOnServerTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FavouritingOnServerResult"
.end annotation


# instance fields
.field private final mMessage:Ljava/lang/String;

.field private final mSuccessful:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "successful"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean p1, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->mSuccessful:Z

    .line 93
    iput-object p2, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->mMessage:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccessful()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/eventgenie/android/utils/asynctasks/ValidateFavouritingOnServerTask$FavouritingOnServerResult;->mSuccessful:Z

    return v0
.end method
