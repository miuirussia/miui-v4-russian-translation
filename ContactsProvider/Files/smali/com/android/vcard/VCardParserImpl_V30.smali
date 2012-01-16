.class Lcom/android/vcard/VCardParserImpl_V30;
.super Lcom/android/vcard/VCardParserImpl_V21;
.source "VCardParserImpl_V30.java"


# instance fields
.field private oz:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->oz:Z

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->oz:Z

    .line 50
    return-void
.end method
