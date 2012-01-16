.class public Lcom/android/vcard/VCardProperty;
.super Ljava/lang/Object;
.source "VCardProperty.java"


# instance fields
.field private eu:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/vcard/VCardProperty;->eu:Ljava/util/Map;

    return-void
.end method
