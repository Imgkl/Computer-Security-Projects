.class public final Lcom/eventgenie/android/container/Track;
.super Ljava/lang/Object;
.source "Track.java"


# instance fields
.field private final mColour:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mPriority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "colour"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/eventgenie/android/container/Track;->mPriority:I

    .line 41
    iput-object p3, p0, Lcom/eventgenie/android/container/Track;->mColour:Ljava/lang/String;

    .line 42
    iput-object p1, p0, Lcom/eventgenie/android/container/Track;->mName:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public getColour()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/eventgenie/android/container/Track;->mColour:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/eventgenie/android/container/Track;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/eventgenie/android/container/Track;->mPriority:I

    return v0
.end method
