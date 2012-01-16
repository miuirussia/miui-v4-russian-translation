.class public Lcom/android/providers/contacts/InstrumentedCursorWrapper;
.super Lcom/android/providers/contacts/CrossProcessCursorWrapper;
.source "InstrumentedCursorWrapper.java"


# static fields
.field private static ik:Ljava/util/List;


# instance fields
.field private il:J

.field private mCreationTime:J

.field private mTag:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->ik:Ljava/util/List;

    return-void
.end method

.method private cF()V
    .locals 4

    .prologue
    .line 127
    iget-wide v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->il:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mCreationTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->il:J

    .line 129
    iget-object v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->il:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms to query URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 6

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->close()V

    .line 119
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mCreationTime:J

    sub-long/2addr v0, v2

    .line 120
    iget-object v2, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms to close for URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->il:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms since query complete)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->ik:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->ik:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cursors still open"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->getCount()I

    move-result v0

    .line 70
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 71
    return v0
.end method

.method public move(I)Z
    .locals 1
    .parameter

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->move(I)Z

    move-result v0

    .line 91
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 92
    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToFirst()Z

    move-result v0

    .line 77
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 78
    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToLast()Z

    move-result v0

    .line 84
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 85
    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToNext()Z

    move-result v0

    .line 105
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 106
    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToPosition(I)Z

    move-result v0

    .line 98
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 99
    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/providers/contacts/CrossProcessCursorWrapper;->moveToPrevious()Z

    move-result v0

    .line 112
    invoke-direct {p0}, Lcom/android/providers/contacts/InstrumentedCursorWrapper;->cF()V

    .line 113
    return v0
.end method
