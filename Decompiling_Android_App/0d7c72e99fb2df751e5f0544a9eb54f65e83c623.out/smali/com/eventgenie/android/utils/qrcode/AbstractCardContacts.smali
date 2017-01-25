.class public abstract Lcom/eventgenie/android/utils/qrcode/AbstractCardContacts;
.super Ljava/lang/Object;
.source "AbstractCardContacts.java"


# instance fields
.field protected barCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getBarCode()Ljava/lang/String;
.end method

.method public abstract getContact(I)Lcom/eventgenie/android/utils/qrcode/InterfaceCardContact;
.end method
