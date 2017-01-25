.class public Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;
.super Ljava/lang/Object;
.source "EmspEndpointLocations.java"


# instance fields
.field private endpointLocations:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpointLocations"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;->endpointLocations:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getEndpointLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 14
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;->endpointLocations:Ljava/util/List;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;->endpointLocations:Ljava/util/List;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;->endpointLocations:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EmspEndpointLocations [endpointLocations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;->endpointLocations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
