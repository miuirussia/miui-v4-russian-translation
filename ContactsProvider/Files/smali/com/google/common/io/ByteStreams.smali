.class public final Lcom/google/common/io/ByteStreams;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;J)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 651
    :goto_0
    cmp-long v0, p1, v3

    if-lez v0, :cond_2

    .line 652
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 653
    cmp-long v2, v0, v3

    if-nez v2, :cond_1

    .line 655
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 656
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 658
    :cond_0
    const-wide/16 v0, 0x1

    sub-long v0, p1, v0

    :goto_1
    move-wide p1, v0

    .line 662
    goto :goto_0

    .line 660
    :cond_1
    sub-long v0, p1, v0

    goto :goto_1

    .line 663
    :cond_2
    return-void
.end method
