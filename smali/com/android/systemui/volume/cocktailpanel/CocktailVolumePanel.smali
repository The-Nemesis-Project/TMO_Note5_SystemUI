.class public Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;
.super Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;
.source "CocktailVolumePanel.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bOrientationChanged:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCocktailContext:Landroid/content/Context;

.field private mContext:Landroid/content/Context;

.field private mOrientation:I

.field private mRoot:Landroid/view/ViewGroup;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSeekbar:Landroid/widget/SeekBar;

.field private mSeekbarMax:I

.field private mSeekbarProgress:I

.field private mStreamImage:Landroid/widget/ImageView;

.field private mStreamType:I

.field private mVolumeLevelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cocktailContext"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "CocktailVolumePanel"

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->TAG:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel$1;-><init>(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)V

    iput-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 55
    iput-object p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mCocktailContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->init()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->setStreamVolume(III)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V

    return-void
.end method

.method private getStreamVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 61
    const-string v1, "CocktailVolumePanel"

    const-string v2, "init()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mOrientation:I

    .line 64
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    .line 65
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 66
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f040013

    iget-object v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0e00ea

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamImage:Landroid/widget/ImageView;

    .line 71
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0e00eb

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->initCocktailVolumeSeekBar()V

    .line 73
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 75
    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    const v2, 0x7f0e00ec

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mVolumeLevelText:Landroid/widget/TextView;

    .line 76
    iget-boolean v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->bOrientationChanged:Z

    if-eqz v1, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V

    .line 78
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->bOrientationChanged:Z

    .line 80
    :cond_0
    return-void
.end method

.method private initCocktailVolumeSeekBar()V
    .locals 2

    .prologue
    .line 195
    iget v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    .line 200
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->setDualColorSeekBar()V

    .line 201
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMode(I)V

    goto :goto_0
.end method

.method private isDeviceOutSpeaker()Z
    .locals 2

    .prologue
    .line 172
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 173
    .local v0, "device":I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 174
    const/4 v1, 0x1

    .line 176
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isMuted()Z
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makePanelView()V
    .locals 2

    .prologue
    .line 107
    const-string v0, "CocktailVolumePanel"

    const-string v1, "makePanelView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makeStreamImageIcon()V

    .line 110
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makeVolumeSeekBar()V

    .line 111
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makeVolumeLevelTextView()V

    .line 112
    return-void
.end method

.method private makeStreamImageIcon()V
    .locals 2

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamImage:Landroid/widget/ImageView;

    const v1, 0x7f020290

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamImage:Landroid/widget/ImageView;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private makeVolumeLevelTextView()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mVolumeLevelText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mVolumeLevelText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :cond_0
    return-void
.end method

.method private makeVolumeSeekBar()V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSeekbarProgress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarMax:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 186
    :cond_0
    return-void
.end method

.method private setDualColorSeekBar()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->isDeviceOutSpeaker()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    :cond_0
    const-string v0, "CocktailVolumePanel"

    const-string v1, "setDualColorSeekBar1()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_1
    const-string v0, "CocktailVolumePanel"

    const-string v1, "setDualColorSeekBar2()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbar:Landroid/widget/SeekBar;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOverlapPointForDualColor(I)V

    goto :goto_0
.end method

.method private setStreamVolume(III)V
    .locals 1
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->getStreamVolume(I)I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 211
    :cond_0
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 116
    const-string v0, "CocktailVolumePanel"

    const-string v1, "getView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onClosePanel()V
    .locals 2

    .prologue
    .line 122
    const-string v0, "CocktailVolumePanel"

    const-string v1, "onClosePanel()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 127
    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOrientationChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iput p1, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mOrientation:I

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->bOrientationChanged:Z

    .line 130
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->init()V

    .line 131
    invoke-super {p0, p1}, Lcom/samsung/android/cocktailbar/AbsCocktailLoadablePanel;->onOrientationChanged(I)V

    .line 132
    return-void
.end method

.method public onPanelVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 136
    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelVisibilityChanged() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public setData(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 141
    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    .line 142
    const-string v0, "max"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarMax:I

    .line 143
    const-string v0, "streamtype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mStreamType:I

    .line 144
    const-string v0, "CocktailVolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->mSeekbarProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/volume/cocktailpanel/CocktailVolumePanel;->makePanelView()V

    .line 146
    return-void
.end method
