.class public Landroid/hardware/FmRadio;
.super Ljava/lang/Object;
.source "FmRadio.java"


# static fields
.field static final FM_JNI_FAILURE:I = -0x1

.field static final FM_JNI_SUCCESS:I = 0x0

.field private static final SCAN_DN:I = 0x3

.field private static final SCAN_UP:I = 0x2

.field private static final SEEK_DN:I = 0x1

.field private static final SEEK_UP:I

.field private static mFmRadio:Landroid/hardware/FmRadio;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/hardware/FmRadio;->mFmRadio:Landroid/hardware/FmRadio;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native acquireFdNative()I
.end method

.method static native cancelSearchNative()I
.end method

.method static native changeFreqNative(I)I
.end method

.method static native changeRadioStateNative(I)I
.end method

.method static native closeFdNative()I
.end method

.method static native getAudioVolumeNative()I
.end method

.method static native getFrequencyNative()I
.end method

.method static native listenForEventsNative([II)I
.end method

.method public static open()Landroid/hardware/FmRadio;
    .locals 1

    .prologue
    invoke-static {}, Landroid/hardware/FmRadio;->acquireFdNative()I

    sget-object v0, Landroid/hardware/FmRadio;->mFmRadio:Landroid/hardware/FmRadio;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/FmRadio;

    invoke-direct {v0}, Landroid/hardware/FmRadio;-><init>()V

    sput-object v0, Landroid/hardware/FmRadio;->mFmRadio:Landroid/hardware/FmRadio;

    :cond_0
    sget-object v0, Landroid/hardware/FmRadio;->mFmRadio:Landroid/hardware/FmRadio;

    return-object v0
.end method

.method static native seekScanControlNative(II)I
.end method

.method static native setAudioMuteNative(I)I
.end method

.method static native setAudioVolumeNative(I)I
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/hardware/FmRadio;->closeFdNative()I

    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/hardware/FmRadio;->closeFdNative()I

    return-void
.end method

.method public fmOff()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/FmRadio;->changeRadioStateNative(I)I

    move-result v1

    if-gez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fmOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/FmRadio;->changeRadioStateNative(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getFrequence()I
    .locals 1

    .prologue
    invoke-static {}, Landroid/hardware/FmRadio;->getFrequencyNative()I

    move-result v0

    return v0
.end method

.method public mute()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/hardware/FmRadio;->setAudioMuteNative(I)I

    return-void
.end method

.method public seekAutoUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x2

    invoke-static {v2, v0}, Landroid/hardware/FmRadio;->seekScanControlNative(II)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public seekDown()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    invoke-static {v1, v0}, Landroid/hardware/FmRadio;->seekScanControlNative(II)I

    move-result v3

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public seekUp()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {v0, v0}, Landroid/hardware/FmRadio;->seekScanControlNative(II)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFrequence(I)Z
    .locals 1
    .parameter "freq"

    .prologue
    invoke-static {p1}, Landroid/hardware/FmRadio;->changeFreqNative(I)I

    const/4 v0, 0x1

    return v0
.end method

.method public setVolume(I)V
    .locals 0
    .parameter "index"

    .prologue
    invoke-static {p1}, Landroid/hardware/FmRadio;->setAudioVolumeNative(I)I

    return-void
.end method

.method public unMute()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/hardware/FmRadio;->setAudioMuteNative(I)I

    return-void
.end method
