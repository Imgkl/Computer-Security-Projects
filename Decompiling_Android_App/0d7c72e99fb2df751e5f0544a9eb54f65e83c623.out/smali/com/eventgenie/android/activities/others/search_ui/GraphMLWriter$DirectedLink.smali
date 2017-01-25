.class Lcom/eventgenie/android/activities/others/search_ui/GraphMLWriter$DirectedLink;
.super Ljava/lang/Object;
.source "GraphMLWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/activities/others/search_ui/GraphMLWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectedLink"
.end annotation


# instance fields
.field private final id1:J

.field private final id2:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 1
    .param p1, "source"    # J
    .param p3, "target"    # J

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-wide p1, p0, Lcom/eventgenie/android/activities/others/search_ui/GraphMLWriter$DirectedLink;->id1:J

    .line 117
    iput-wide p3, p0, Lcom/eventgenie/android/activities/others/search_ui/GraphMLWriter$DirectedLink;->id2:J

    .line 118
    return-void
.end method


# virtual methods
.method public getSource()J
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Lcom/eventgenie/android/activities/others/search_ui/GraphMLWriter$DirectedLink;->id1:J

    return-wide v0
.end method

.method public getTarget()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/eventgenie/android/activities/others/search_ui/GraphMLWriter$DirectedLink;->id2:J

    return-wide v0
.end method
