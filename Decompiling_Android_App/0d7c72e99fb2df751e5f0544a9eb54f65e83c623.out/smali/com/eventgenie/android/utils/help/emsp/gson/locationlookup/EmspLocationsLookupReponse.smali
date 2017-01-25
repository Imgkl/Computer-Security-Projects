.class public Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;
.super Ljava/lang/Object;
.source "EmspLocationsLookupReponse.java"


# instance fields
.field private endpointLocations:Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "endpointLocations"
    .end annotation
.end field

.field private status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndpointLocations()Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->endpointLocations:Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->endpointLocations:Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->endpointLocations:Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspEndpointLocations;

    return-object v0
.end method

.method public getStatus()Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    invoke-direct {v0}, Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/eventgenie/android/utils/help/emsp/gson/locationlookup/EmspLocationsLookupReponse;->status:Lcom/eventgenie/android/utils/help/emsp/gson/common/EmspResponseStatus;

    return-object v0
.end method
