.class public Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;
.super Ljava/lang/Object;
.source "ViewConfigurationElement.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChildElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation
.end field

.field private mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

.field private mLoaderIdentifier:Ljava/lang/Integer;

.field private mTitle:Ljava/lang/String;

.field private mType:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement$1;

    invoke-direct {v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement$1;-><init>()V

    sput-object v0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mTitle:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    iput-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mType:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    iput-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mChildElements:Ljava/util/List;

    .line 96
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mChildElements:Ljava/util/List;

    sget-object v1, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mLoaderIdentifier:Ljava/lang/Integer;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/eventgenie/android/viewconfig/base/ConfigElementType;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;-><init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/eventgenie/android/viewconfig/base/ConfigElementType;Lcom/genie_connect/common/db/entityfactory/GenieEntity;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/eventgenie/android/viewconfig/base/ConfigElementType;
    .param p3, "entityType"    # Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .param p4, "loaderIdentifier"    # Ljava/lang/Integer;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mTitle:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mType:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    .line 60
    iput-object p3, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mChildElements:Ljava/util/List;

    .line 62
    iput-object p4, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mLoaderIdentifier:Ljava/lang/Integer;

    .line 63
    return-void
.end method


# virtual methods
.method public addChildElement(Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;)V
    .locals 1
    .param p1, "child"    # Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mChildElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getChildElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mChildElements:Ljava/util/List;

    return-object v0
.end method

.method public getEntityType()Lcom/genie_connect/common/db/entityfactory/GenieEntity;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    return-object v0
.end method

.method public getLoaderIdentifer()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mLoaderIdentifier:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/eventgenie/android/viewconfig/base/ConfigElementType;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mType:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mType:Lcom/eventgenie/android/viewconfig/base/ConfigElementType;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 109
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mEntityType:Lcom/genie_connect/common/db/entityfactory/GenieEntity;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 110
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mChildElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/eventgenie/android/viewconfig/base/ViewConfigurationElement;->mLoaderIdentifier:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method
