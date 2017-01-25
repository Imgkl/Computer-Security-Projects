.class public Lcom/a_vcard/android/provider/Contacts;
.super Ljava/lang/Object;
.source "Contacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a_vcard/android/provider/Contacts$OrganizationColumns;,
        Lcom/a_vcard/android/provider/Contacts$ContactMethodsColumns;,
        Lcom/a_vcard/android/provider/Contacts$PhonesColumns;,
        Lcom/a_vcard/android/provider/Contacts$ContactMethods;,
        Lcom/a_vcard/android/provider/Contacts$Phones;,
        Lcom/a_vcard/android/provider/Contacts$PeopleColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "contacts"

.field public static final KIND_EMAIL:I = 0x1

.field public static final KIND_IM:I = 0x3

.field public static final KIND_ORGANIZATION:I = 0x4

.field public static final KIND_PHONE:I = 0x5

.field public static final KIND_POSTAL:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
