FIND_PATH ( LIBWEBSOCKETS_INCLUDE_DIR libwebsockets.h
  /usr/local/include
  /usr/include
  )

FIND_LIBRARY ( LIBWEBSOCKETS_LIBRARIES websockets
  /usr/local/lib
  /usr/lib
  )

GET_FILENAME_COMPONENT( LIBWEBSOCKETS_LIBRARY_DIR ${LIBWEBSOCKETS_LIBRARIES} PATH )

SET ( LIBWEBSOCKETS_FOUND "NO" )
IF ( LIBWEBSOCKETS_INCLUDE_DIR )
  IF ( LIBWEBSOCKETS_LIBRARIES )
    SET ( LIBWEBSOCKETS_FOUND "YES" )
  ENDIF ( LIBWEBSOCKETS_LIBRARIES )
ENDIF ( LIBWEBSOCKETS_INCLUDE_DIR )

MARK_AS_ADVANCED(
  LIBWEBSOCKETS_LIBRARY_DIR
  LIBWEBSOCKETS_INCLUDE_DIR
  LIBWEBSOCKETS_LIBRARIES
)


set(LibWEBSOCKETS_INCLUDE_DIRS ${LIBWEBSOCKETS_INCLUDE_DIR})
set(LibWEBSOCKETS_LIBRARIES ${LIBWEBSOCKETS_LIBRARIES})
set(LibWEBSOCKETS_LIBRARY_DIR ${LIBWEBSOCKETS_LIBRARY_DIR})
set(LibWEBSOCKETS_FOUND ${LIBWEBSOCKETS_FOUND})

