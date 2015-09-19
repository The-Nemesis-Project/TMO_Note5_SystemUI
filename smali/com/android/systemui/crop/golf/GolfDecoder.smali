.class public Lcom/android/systemui/crop/golf/GolfDecoder;
.super Ljava/lang/Object;
.source "GolfDecoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateGolfFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 29
    .param p0, "tempFilePath"    # Ljava/lang/String;
    .param p1, "FilePath"    # Ljava/lang/String;
    .param p2, "allFrame"    # Z

    .prologue
    .line 34
    const/4 v15, 0x0

    .line 36
    .local v15, "inStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v9, "f":Ljava/io/File;
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .local v16, "inStream":Ljava/io/FileInputStream;
    if-eqz v16, :cond_6

    .line 39
    :try_start_1
    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v17, v0

    .line 40
    .local v17, "len":I
    move/from16 v0, v17

    new-array v4, v0, [B

    .line 41
    .local v4, "byteArray":[B
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    move/from16 v2, v17

    invoke-virtual {v0, v4, v1, v2}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v22

    .line 42
    .local v22, "readByte":I
    if-gtz v22, :cond_0

    .line 116
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .line 118
    .end local v4    # "byteArray":[B
    .end local v9    # "f":Ljava/io/File;
    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .end local v17    # "len":I
    .end local v22    # "readByte":I
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    :goto_0
    return-void

    .line 43
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v4    # "byteArray":[B
    .restart local v9    # "f":Ljava/io/File;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v17    # "len":I
    .restart local v22    # "readByte":I
    :cond_0
    :try_start_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 44
    .local v5, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 45
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 46
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v13

    .line 47
    .local v13, "ib":Ljava/nio/IntBuffer;
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 49
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v24

    .line 50
    .local v24, "ver_major":I
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v25

    .line 51
    .local v25, "ver_minor":I
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_2

    .line 116
    :cond_1
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto :goto_0

    .line 54
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v11

    .line 55
    .local v11, "header_length":I
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v10

    .line 56
    .local v10, "format":I
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    move-result v18

    .line 59
    .local v18, "nFrames":I
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 60
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 61
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 62
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 64
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 65
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 66
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 67
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 68
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 69
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 70
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 71
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 72
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 73
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 74
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 75
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I

    .line 76
    const/16 v19, 0x0

    .line 78
    .local v19, "num_video_seq":I
    if-eqz p2, :cond_3

    .line 79
    invoke-virtual {v13}, Ljava/nio/IntBuffer;->get()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v19

    .line 80
    if-gtz v19, :cond_3

    .line 116
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 83
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :cond_3
    :try_start_4
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 87
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v14

    .line 91
    .local v14, "ib1":Ljava/nio/IntBuffer;
    invoke-virtual {v14}, Ljava/nio/IntBuffer;->remaining()I

    move-result v26

    sub-int v26, v26, v18

    sub-int v26, v26, v19

    add-int/lit8 v21, v26, -0x1

    .line 92
    .local v21, "offset_start_in_ib":I
    add-int/lit8 v26, v19, 0x1

    add-int v26, v26, v18

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 93
    .local v20, "offsetArray":[I
    move/from16 v0, v21

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 95
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 96
    if-eqz p2, :cond_4

    add-int/lit8 v26, v19, 0x1

    add-int v6, v26, v18

    .line 97
    .local v6, "count":I
    :goto_1
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    if-ge v12, v6, :cond_6

    .line 98
    const/16 v23, 0x0

    .line 99
    .local v23, "size":I
    add-int v26, v19, v18

    move/from16 v0, v26

    if-ne v6, v0, :cond_5

    .line 100
    aget v26, v20, v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    sub-int v23, v21, v26

    .line 104
    :goto_3
    :try_start_5
    move/from16 v0, v23

    new-array v7, v0, [B

    .line 105
    .local v7, "data":[B
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v26

    aget v27, v20, v12

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v23

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 106
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-static {v0, v10, v1, v7}, Lcom/android/systemui/crop/golf/GolfDecoder;->saveBufferToFile(Ljava/lang/String;II[B)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 97
    .end local v7    # "data":[B
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 96
    .end local v6    # "count":I
    .end local v12    # "i":I
    .end local v23    # "size":I
    :cond_4
    const/4 v6, 0x1

    goto :goto_1

    .line 102
    .restart local v6    # "count":I
    .restart local v12    # "i":I
    .restart local v23    # "size":I
    :cond_5
    add-int/lit8 v26, v12, 0x1

    :try_start_6
    aget v26, v20, v26

    aget v27, v20, v12

    sub-int v23, v26, v27

    goto :goto_3

    .line 107
    :catch_0
    move-exception v8

    .line 108
    .local v8, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 113
    .end local v4    # "byteArray":[B
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .end local v6    # "count":I
    .end local v8    # "e":Ljava/lang/OutOfMemoryError;
    .end local v10    # "format":I
    .end local v11    # "header_length":I
    .end local v12    # "i":I
    .end local v13    # "ib":Ljava/nio/IntBuffer;
    .end local v14    # "ib1":Ljava/nio/IntBuffer;
    .end local v17    # "len":I
    .end local v18    # "nFrames":I
    .end local v19    # "num_video_seq":I
    .end local v20    # "offsetArray":[I
    .end local v21    # "offset_start_in_ib":I
    .end local v22    # "readByte":I
    .end local v23    # "size":I
    .end local v24    # "ver_major":I
    .end local v25    # "ver_minor":I
    :catch_1
    move-exception v8

    move-object/from16 v15, v16

    .line 114
    .end local v9    # "f":Ljava/io/File;
    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .local v8, "e":Ljava/lang/Exception;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 116
    invoke-static {v15}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/Exception;
    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :cond_6
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object/from16 v15, v16

    .line 117
    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto/16 :goto_0

    .line 116
    .end local v9    # "f":Ljava/io/File;
    :catchall_0
    move-exception v26

    :goto_6
    invoke-static {v15}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v26

    .end local v15    # "inStream":Ljava/io/FileInputStream;
    .restart local v9    # "f":Ljava/io/File;
    .restart local v16    # "inStream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v26

    move-object/from16 v15, v16

    .end local v16    # "inStream":Ljava/io/FileInputStream;
    .restart local v15    # "inStream":Ljava/io/FileInputStream;
    goto :goto_6

    .line 113
    .end local v9    # "f":Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_5
.end method

.method private static saveBufferToFile(Ljava/lang/String;II[B)V
    .locals 6
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "format"    # I
    .param p2, "size"    # I
    .param p3, "buffer"    # [B

    .prologue
    .line 18
    const-string v1, ".jpg"

    .line 19
    .local v1, "ext":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .local v2, "fl":Ljava/io/File;
    const/4 v3, 0x0

    .line 22
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .local v4, "stream":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v4, p3, v5, p2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 29
    invoke-static {v4}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v3, v4

    .line 31
    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 26
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 27
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 29
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    invoke-static {v3}, Lcom/android/systemui/crop/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v5

    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 26
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 24
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    .restart local v4    # "stream":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "stream":Ljava/io/FileOutputStream;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method
