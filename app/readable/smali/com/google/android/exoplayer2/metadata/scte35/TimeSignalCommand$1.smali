.class final Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;
.super Ljava/lang/Object;
.source "TimeSignalCommand.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    new-instance v1, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;-><init>(JJLcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;)V

    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 88
    new-array v0, p1, [Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand$1;->newArray(I)[Lcom/google/android/exoplayer2/metadata/scte35/TimeSignalCommand;

    move-result-object v0

    return-object v0
.end method
