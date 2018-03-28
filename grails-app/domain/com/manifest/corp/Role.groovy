package com.manifest.corp

import groovy.transform.EqualsAndHashCode
import groovy.transform.ToString
import grails.compiler.GrailsCompileStatic

@GrailsCompileStatic
@EqualsAndHashCode(includes='authority')
@ToString(includes='authority', includeNames=true, includePackage=false)
class Role implements Serializable {

	private static final long serialVersionUID = 1

	String authorities

	static constraints = {
		authorities nullable: false, blank: false, unique: true
	}

	static mapping = {
		cache true
	}
}
