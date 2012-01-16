.class public final Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;
.super Ljava/io/BufferedReader;
.source "VCardParserImpl_V21.java"


# instance fields
.field private mTime:J

.field private uW:Z

.field private uX:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 59
    return-void
.end method


# virtual methods
.method public readLine()Ljava/lang/String;
    .locals 7

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->uW:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->uX:Ljava/lang/String;

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->uX:Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->uW:Z

    .line 74
    :goto_0
    return-object v0

    .line 70
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 71
    invoke-super {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 73
    iget-wide v5, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    sub-long v1, v3, v1

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->mTime:J

    goto :goto_0
.end method
