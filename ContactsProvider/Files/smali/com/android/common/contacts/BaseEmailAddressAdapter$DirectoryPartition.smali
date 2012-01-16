.class public final Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartition;
.super Lcom/android/common/widget/CompositeCursorAdapter$Partition;
.source "BaseEmailAddressAdapter.java"


# instance fields
.field public accountType:Ljava/lang/String;

.field public constraint:Ljava/lang/CharSequence;

.field public displayName:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public rU:J

.field public rV:Ljava/lang/String;

.field public rW:Z

.field public rX:Lcom/android/common/contacts/BaseEmailAddressAdapter$DirectoryPartitionFilter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, v0}, Lcom/android/common/widget/CompositeCursorAdapter$Partition;-><init>(ZZ)V

    .line 110
    return-void
.end method
